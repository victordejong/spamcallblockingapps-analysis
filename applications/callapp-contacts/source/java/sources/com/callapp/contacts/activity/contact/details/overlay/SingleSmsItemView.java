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

    /* renamed from: a */
    private OnSinglePageEventListener f22061a;

    /* renamed from: b */
    private View f22062b;

    /* renamed from: c */
    private TextView f22063c;

    /* renamed from: d */
    private TextView f22064d;

    /* renamed from: e */
    private ImageView f22065e;

    /* renamed from: f */
    private int f22066f;

    /* renamed from: g */
    private SingleSmsData f22067g;

    /* renamed from: h */
    private boolean f22068h;

    /* renamed from: i */
    private ClickableSpan f22069i;

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
        this.f22066f = 0;
        this.f22069i = new ClickableSpan() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                if (!SingleSmsItemView.this.f22068h) {
                    EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.OVERLAY_LINK_CLICKED, false);
                }
                SingleSmsItemView.this.f22068h = false;
            }
        };
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100140);
        inflate(getContext(), 2131558713, this);
        this.f22062b = findViewById(2131364098);
        this.f22065e = (ImageView) findViewById(2131363410);
        ImageView imageView = (ImageView) findViewById(2131363410);
        imageView.setOnClickListener(this);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        TextView textView = (TextView) findViewById(2131363086);
        this.f22063c = textView;
        textView.setTextColor(color2);
        CustomLinkMovementMethod customLinkMovementMethod = new CustomLinkMovementMethod();
        customLinkMovementMethod.setClickListener(this.f22069i);
        this.f22063c.setMovementMethod(customLinkMovementMethod);
        ((MaxHeightScrollView) findViewById(2131364080)).setOnSizeChangedListener(new OnSizeChangedListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.2
            @Override // com.callapp.contacts.widget.OnSizeChangedListener
            /* renamed from: a */
            public final void mo26691a(int i2) {
                SingleSmsItemView.this.f22066f = i2;
                SingleSmsItemView.m30853b(SingleSmsItemView.this);
            }
        });
        TextView textView2 = (TextView) findViewById(2131363473);
        this.f22064d = textView2;
        textView2.setTextColor(color);
    }

    /* renamed from: a */
    private SpannableString m30859a(SpannableString spannableString) {
        String str;
        try {
            str = Currency.getInstance(CallAppApplication.get().getResources().getConfiguration().locale).getSymbol();
        } catch (IllegalArgumentException | NullPointerException e) {
            CLog.m27609a(SingleSmsItemView.class, e);
            str = null;
        }
        List<String> m31909a = RegexUtils.m31909a(spannableString.toString(), str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableString);
        if (CollectionUtils.m26068b(m31909a)) {
            for (final String str2 : m31909a) {
                ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.3
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        SingleSmsItemView.this.f22068h = true;
                        CallAppClipboardManager.get().m28709a(Activities.getString(2131886148), str2);
                        FeedbackManager.get().m28669a(Activities.getString(2131886662), (Integer) 80);
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                    }
                };
                int indexOf = spannableStringBuilder.toString().indexOf(str2);
                int length = str2.length() + indexOf;
                spannableStringBuilder.replace(indexOf, length, (CharSequence) (str2 + new String(Character.toChars(128203))));
                spannableStringBuilder.setSpan(clickableSpan, indexOf, length, 33);
                spannableStringBuilder.setSpan(new UnderlineSpan(), indexOf, length, 0);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099784)), indexOf, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m30854a(String str, View view) {
        CallAppClipboardManager.get().setPrimaryClip$387437e0(ClipData.newPlainText(Activities.getString(2131887721), str));
        FeedbackManager.get().m28669a(Activities.getString(2131887864), (Integer) null);
        return true;
    }

    /* renamed from: b */
    static /* synthetic */ void m30853b(SingleSmsItemView singleSmsItemView) {
        OnSinglePageEventListener onSinglePageEventListener = singleSmsItemView.f22061a;
        if (onSinglePageEventListener != null) {
            onSinglePageEventListener.onHeightChanged(singleSmsItemView.f22066f);
        }
    }

    /* renamed from: a */
    public final void m30855a(SingleSmsData singleSmsData, int i) {
        this.f22067g = singleSmsData;
        if (PhoneManager.get().m28239a(singleSmsData.getPhone()).isValidForSearch()) {
            this.f22065e.setVisibility(0);
        } else {
            this.f22065e.setVisibility(4);
        }
        final String smsText = singleSmsData.getSmsText();
        SpannableString spannableString = new SpannableString(smsText == null ? "" : smsText);
        try {
            Linkify.addLinks(spannableString, 15);
        } catch (Exception e) {
            CLog.m27609a(SingleSmsItemView.class, e);
        }
        this.f22063c.setText(m30859a(spannableString));
        this.f22063c.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay._$$Lambda$SingleSmsItemView$bKWkgBVV7pVM99haWfAjVlrYJZI
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m30854a;
                m30854a = SingleSmsItemView.m30854a(smsText, view);
                return m30854a;
            }
        });
        if (i <= 1) {
            this.f22064d.setVisibility(8);
            return;
        }
        this.f22064d.setVisibility(0);
        TextView textView = this.f22064d;
        textView.setText(singleSmsData.getPagePosition() + "/" + i);
    }

    public View getTextContainer() {
        return this.f22062b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131363410) {
            AndroidUtils.m27630a(this, 1);
            AnalyticsManager.get().m28450a(Constants.INCOMING_SMS_OVERLAY, "Open Sms Button");
            this.f22061a.onOpenSmsClick(PhoneManager.get().m28239a(this.f22067g.getPhone()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setOnSinglePageEventListener(OnSinglePageEventListener onSinglePageEventListener) {
        this.f22061a = onSinglePageEventListener;
    }
}
