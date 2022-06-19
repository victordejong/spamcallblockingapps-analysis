package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.PermissionAllowedEvent;
import com.callapp.contacts.manager.permission.PermissionDeniedEvent;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.sticky.StickyPermissionView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView.class */
public class StickyPermissionView extends ConstraintLayout {

    /* renamed from: a */
    private TextView f29463a;

    /* renamed from: b */
    private View f29464b;

    /* renamed from: c */
    private TextView f29465c;

    /* renamed from: d */
    private PermissionManager f29466d;

    /* renamed from: e */
    private ImageView f29467e;

    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionView$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView$1.class */
    public class View$OnClickListenerC81861 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ PermissionManager.PermissionGroup f29468a;

        View$OnClickListenerC81861(PermissionManager.PermissionGroup permissionGroup) {
            StickyPermissionView.this = r4;
            this.f29468a = permissionGroup;
        }

        /* renamed from: a */
        public /* synthetic */ void m26278a(PermissionManager.PermissionGroup permissionGroup) {
            EventBusManager.f25138a.m29046a((EventType<L, EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>>) PermissionDeniedEvent.f26064a, (EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
            StickyPermissionView.this.setVisibility(8);
        }

        /* renamed from: b */
        public /* synthetic */ void m26277b(PermissionManager.PermissionGroup permissionGroup) {
            EventBusManager.f25138a.m29046a((EventType<L, EventType<PermissionAllowedEvent, PermissionManager.PermissionGroup>>) PermissionAllowedEvent.f26063a, (EventType<PermissionAllowedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
            StickyPermissionView.this.setVisibility(8);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            final PermissionManager.PermissionGroup permissionGroup = this.f29468a;
            Runnable runnable = new Runnable() { // from class: com.callapp.contacts.widget.sticky._$$Lambda$StickyPermissionView$1$0gMX5sLzBPfuNt3FwC5y0lavUOk
                @Override // java.lang.Runnable
                public final void run() {
                    StickyPermissionView.View$OnClickListenerC81861.this.m26277b(permissionGroup);
                }
            };
            final PermissionManager.PermissionGroup permissionGroup2 = this.f29468a;
            StickyPermissionView.this.f29466d.m28254a((BaseActivity) StickyPermissionView.this.getContext(), runnable, new Runnable() { // from class: com.callapp.contacts.widget.sticky._$$Lambda$StickyPermissionView$1$1_nu28uq9sKfjbZzrMsKCGpaD78
                @Override // java.lang.Runnable
                public final void run() {
                    StickyPermissionView.View$OnClickListenerC81861.this.m26278a(permissionGroup2);
                }
            }, this.f29468a);
        }
    }

    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionView$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionView$2.class */
    public static /* synthetic */ class C81872 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29470a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f29470a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.MICROPHONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.STORAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.CALL_LOG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f29470a[PermissionManager.PermissionGroup.CONTACTS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public StickyPermissionView(Context context) {
        this(context, null);
    }

    public StickyPermissionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyPermissionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mo26276a(context);
    }

    /* renamed from: a */
    public static void m26283a(SpannableString spannableString, String str, Integer num) {
        int indexOf = spannableString.toString().indexOf(str);
        int length = str.length() + indexOf;
        if (indexOf < 0 || length > spannableString.length()) {
            return;
        }
        spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), indexOf, length, 33);
        spannableString.setSpan(new StyleSpan(1), indexOf, length, 33);
        if (num == null) {
            return;
        }
        spannableString.setSpan(new ForegroundColorSpan(num.intValue()), indexOf, length, 18);
    }

    /* renamed from: a */
    public /* synthetic */ void m26281a(PermissionManager.PermissionGroup permissionGroup, View view) {
        EventBusManager.f25138a.m29046a((EventType<L, EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>>) PermissionDeniedEvent.f26064a, (EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup>) permissionGroup, false);
        setVisibility(8);
    }

    /* renamed from: a */
    public final View.OnClickListener m26282a(PermissionManager.PermissionGroup permissionGroup) {
        return new View$OnClickListenerC81861(permissionGroup);
    }

    /* renamed from: a */
    public void mo26276a(Context context) {
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
        this.f29464b = findViewById(2131363991);
        this.f29465c = (TextView) findViewById(2131363993);
        this.f29463a = (TextView) findViewById(2131363995);
        this.f29467e = (ImageView) findViewById(2131363994);
        setBackgroundResource(2131232212);
        setLayoutParams(new Constraints.LayoutParams(-1, getContainerHeight()));
    }

    /* renamed from: b */
    public final View.OnClickListener m26279b(PermissionManager.PermissionGroup permissionGroup) {
        return new _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew(this, permissionGroup);
    }

    /* renamed from: c */
    public StickyPermissionViewData mo26275c(PermissionManager.PermissionGroup permissionGroup) {
        if (C81872.f29470a[permissionGroup.ordinal()] != 1) {
            return null;
        }
        return new StickyPermissionViewData(Activities.getString(2131887576), 2131232041, m26282a(permissionGroup), new _$$Lambda$StickyPermissionView$IKQSzBYBAqInk4l_UpSPpRycfew(this, permissionGroup));
    }

    protected int getContainerHeight() {
        return -2;
    }

    protected int getLayout() {
        return 2131558847;
    }

    public void setData(StickyPermissionViewData stickyPermissionViewData) {
        SpannableString spannableString = new SpannableString(stickyPermissionViewData.getTitle());
        m26283a(spannableString, Activities.getString(2131887610), Integer.valueOf(ThemeUtils.getColor(2131100228)));
        this.f29463a.setText(spannableString);
        this.f29464b.setOnClickListener(stickyPermissionViewData.getOnAllowClickListener());
        this.f29465c.setText(Activities.getString(2131886738));
        this.f29465c.setOnClickListener(stickyPermissionViewData.getOnDenyClickListener());
        ImageUtils.m27530a(this.f29467e, stickyPermissionViewData.getImage());
    }

    public void setPermissionToRequest(PermissionManager permissionManager, PermissionManager.PermissionGroup permissionGroup) {
        this.f29466d = permissionManager;
        setData(mo26275c(permissionGroup));
    }
}
