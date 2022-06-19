package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.widget.TextView;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionViewExpanded.class */
public class StickyPermissionViewExpanded extends StickyPermissionView {

    /* renamed from: a */
    private TextView f29476a;

    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionViewExpanded$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionViewExpanded$1.class */
    static /* synthetic */ class C81881 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29477a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f29477a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.MICROPHONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.STORAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.CALL_LOG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f29477a[PermissionManager.PermissionGroup.CONTACTS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public StickyPermissionViewExpanded(Context context) {
        this(context, null);
    }

    public StickyPermissionViewExpanded(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyPermissionViewExpanded(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    /* renamed from: a */
    public final void mo26276a(Context context) {
        super.mo26276a(context);
        this.f29476a = (TextView) findViewById(2131362139);
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    /* renamed from: c */
    public final StickyPermissionViewData mo26275c(PermissionManager.PermissionGroup permissionGroup) {
        if (C81881.f29477a[permissionGroup.ordinal()] != 1) {
            return super.mo26275c(permissionGroup);
        }
        String string = Activities.getString(2131887576);
        String string2 = Activities.getString(2131887610);
        String m26007u = StringUtils.m26007u(Activities.getString(2131886080));
        SpannableString spannableString = new SpannableString(Activities.getString(2131887575));
        m26283a(spannableString, m26007u, Integer.valueOf(ThemeUtils.getColor(2131100228)));
        m26283a(spannableString, string2, Integer.valueOf(ThemeUtils.getColor(2131100228)));
        return new StickyPermissionViewData(string, spannableString, 2131232042, m26282a(permissionGroup), m26279b(permissionGroup));
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    protected int getContainerHeight() {
        return -2;
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    protected int getLayout() {
        return 2131558848;
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    public void setData(StickyPermissionViewData stickyPermissionViewData) {
        super.setData(stickyPermissionViewData);
        this.f29476a.setText(stickyPermissionViewData.getDescription());
    }
}
