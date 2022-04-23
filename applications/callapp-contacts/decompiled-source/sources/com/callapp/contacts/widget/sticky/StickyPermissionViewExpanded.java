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

    /* renamed from: a  reason: collision with root package name */
    private TextView f16959a;

    /* renamed from: com.callapp.contacts.widget.sticky.StickyPermissionViewExpanded$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPermissionViewExpanded$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16960a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f16960a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.MICROPHONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.STORAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.CALL_LOG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f16960a[PermissionManager.PermissionGroup.CONTACTS.ordinal()] = 7;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    public final void a(Context context) {
        super.a(context);
        this.f16959a = (TextView) findViewById(2131362139);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    public final StickyPermissionViewData c(PermissionManager.PermissionGroup permissionGroup) {
        if (AnonymousClass1.f16960a[permissionGroup.ordinal()] != 1) {
            return super.c(permissionGroup);
        }
        String string = Activities.getString(2131887576);
        String string2 = Activities.getString(2131887610);
        String u = StringUtils.u(Activities.getString(2131886080));
        SpannableString spannableString = new SpannableString(Activities.getString(2131887575));
        a(spannableString, u, Integer.valueOf(ThemeUtils.getColor(2131100228)));
        a(spannableString, string2, Integer.valueOf(ThemeUtils.getColor(2131100228)));
        return new StickyPermissionViewData(string, spannableString, 2131232042, a(permissionGroup), b(permissionGroup));
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    protected int getContainerHeight() {
        return -2;
    }

    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    protected int getLayout() {
        return 2131558848;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.sticky.StickyPermissionView
    public void setData(StickyPermissionViewData stickyPermissionViewData) {
        super.setData(stickyPermissionViewData);
        this.f16959a.setText(stickyPermissionViewData.getDescription());
    }
}
