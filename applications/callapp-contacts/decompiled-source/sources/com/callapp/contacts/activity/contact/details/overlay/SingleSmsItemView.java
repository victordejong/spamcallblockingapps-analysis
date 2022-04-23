package com.callapp.contacts.activity.contact.details.overlay;

import android.content.ClipData;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.text.util.Linkify;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CustomLinkMovementMethod;
import com.callapp.contacts.widget.MaxHeightScrollView;
import com.callapp.contacts.widget.OnSizeChangedListener;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.Currency;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView.class */
public class SingleSmsItemView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private OnSinglePageEventListener f12277a;

    /* renamed from: b  reason: collision with root package name */
    private View f12278b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f12279c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f12280d;
    private ImageView e;
    private int f;
    private SingleSmsData g;
    private boolean h;
    private ClickableSpan i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener.class */
    public interface OnSinglePageEventListener {
        void onHeightChanged(int i);

        void onOpenSmsClick(Phone phone);
    }

    public SingleSmsItemView(Context context) {
        this(context, null);
    }

    public SingleSmsItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SingleSmsItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 0;
        this.i = new ClickableSpan() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                if (!SingleSmsItemView.this.h) {
                    EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.OVERLAY_LINK_CLICKED, false);
                }
                SingleSmsItemView.this.h = false;
            }
        };
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100140);
        inflate(getContext(), 2131558713, this);
        this.f12278b = findViewById(2131364098);
        this.e = (ImageView) findViewById(2131363410);
        ImageView imageView = (ImageView) findViewById(2131363410);
        imageView.setOnClickListener(this);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        TextView textView = (TextView) findViewById(2131363086);
        this.f12279c = textView;
        textView.setTextColor(color2);
        CustomLinkMovementMethod customLinkMovementMethod = new CustomLinkMovementMethod();
        customLinkMovementMethod.setClickListener(this.i);
        this.f12279c.setMovementMethod(customLinkMovementMethod);
        ((MaxHeightScrollView) findViewById(2131364080)).setOnSizeChangedListener(new OnSizeChangedListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.2
            @Override // com.callapp.contacts.widget.OnSizeChangedListener
            public final void a(int i2) {
                SingleSmsItemView.this.f = i2;
                SingleSmsItemView.b(SingleSmsItemView.this);
            }
        });
        TextView textView2 = (TextView) findViewById(2131363473);
        this.f12280d = textView2;
        textView2.setTextColor(color);
    }

    private SpannableString a(SpannableString spannableString) {
        String str;
        try {
            str = Currency.getInstance(CallAppApplication.get().getResources().getConfiguration().locale).getSymbol();
        } catch (IllegalArgumentException | NullPointerException e) {
            CLog.a(SingleSmsItemView.class, e);
            str = null;
        }
        List<String> a2 = RegexUtils.a(spannableString.toString(), str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableString);
        if (CollectionUtils.b(a2)) {
            for (final String str2 : a2) {
                ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.3
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        SingleSmsItemView.this.h = true;
                        CallAppClipboardManager.get().a(Activities.getString(2131886148), str2);
                        FeedbackManager.get().a(Activities.getString(2131886662), (Integer) 80);
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                    }
                };
                int indexOf = spannableStringBuilder.toString().indexOf(str2);
                int length = str2.length() + indexOf;
                String str3 = new String(Character.toChars(128203));
                spannableStringBuilder.replace(indexOf, length, (CharSequence) (str2 + str3));
                spannableStringBuilder.setSpan(clickableSpan, indexOf, length, 33);
                spannableStringBuilder.setSpan(new UnderlineSpan(), indexOf, length, 0);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099784)), indexOf, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(String str, View view) {
        CallAppClipboardManager.get().setPrimaryClip$387437e0(ClipData.newPlainText(Activities.getString(2131887721), str));
        FeedbackManager.get().a(Activities.getString(2131887864), (Integer) null);
        return true;
    }

    static /* synthetic */ void b(SingleSmsItemView singleSmsItemView) {
        OnSinglePageEventListener onSinglePageEventListener = singleSmsItemView.f12277a;
        if (onSinglePageEventListener != null) {
            onSinglePageEventListener.onHeightChanged(singleSmsItemView.f);
        }
    }

    public final void a(SingleSmsData singleSmsData, int i) {
        this.g = singleSmsData;
        if (PhoneManager.get().a(singleSmsData.getPhone()).isValidForSearch()) {
            this.e.setVisibility(0);
        } else {
            this.e.setVisibility(4);
        }
        final String smsText = singleSmsData.getSmsText();
        SpannableString spannableString = new SpannableString(smsText == null ? "" : smsText);
        try {
            Linkify.addLinks(spannableString, 15);
        } catch (Exception e) {
            CLog.a(SingleSmsItemView.class, e);
        }
        this.f12279c.setText(a(spannableString));
        this.f12279c.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay._$$Lambda$SingleSmsItemView$bKWkgBVV7pVM99haWfAjVlrYJZI
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean a2;
                a2 = SingleSmsItemView.a(smsText, view);
                return a2;
            }
        });
        if (i > 1) {
            this.f12280d.setVisibility(0);
            TextView textView = this.f12280d;
            textView.setText(singleSmsData.getPagePosition() + "/" + i);
            return;
        }
        this.f12280d.setVisibility(8);
    }

    public View getTextContainer() {
        return this.f12278b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131363410) {
            AndroidUtils.a(this, 1);
            AnalyticsManager.get().a(Constants.INCOMING_SMS_OVERLAY, "Open Sms Button");
            this.f12277a.onOpenSmsClick(PhoneManager.get().a(this.g.getPhone()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setOnSinglePageEventListener(OnSinglePageEventListener onSinglePageEventListener) {
        this.f12277a = onSinglePageEventListener;
    }
}
