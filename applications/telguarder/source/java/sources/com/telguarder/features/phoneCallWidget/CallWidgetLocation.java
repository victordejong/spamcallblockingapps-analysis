package com.telguarder.features.phoneCallWidget;

import android.content.Context;
import com.telguarder.C2083R;
import com.telguarder.helpers.common.AppUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/CallWidgetLocation.class */
public enum CallWidgetLocation {
    AUTO,
    TOP,
    MIDDLE,
    BOTTOM,
    CUSTOM;
    
    private int verticalOffset = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.telguarder.features.phoneCallWidget.CallWidgetLocation$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/CallWidgetLocation$1.class */
    public static /* synthetic */ class C22111 {

        /* renamed from: $SwitchMap$com$telguarder$features$phoneCallWidget$CallWidgetLocation */
        static final /* synthetic */ int[] f1291xd78b8ea8;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallWidgetLocation.values().length];
            f1291xd78b8ea8 = iArr;
            try {
                iArr[CallWidgetLocation.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1291xd78b8ea8[CallWidgetLocation.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1291xd78b8ea8[CallWidgetLocation.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1291xd78b8ea8[CallWidgetLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1291xd78b8ea8[CallWidgetLocation.CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    CallWidgetLocation() {
    }

    public static List<CallWidgetLocation> getAllConstants() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AUTO);
        arrayList.add(TOP);
        arrayList.add(MIDDLE);
        arrayList.add(BOTTOM);
        arrayList.add(CUSTOM);
        return arrayList;
    }

    public static CallWidgetLocation[] getAllConstantsAsArray() {
        List<CallWidgetLocation> allConstants = getAllConstants();
        return (CallWidgetLocation[]) allConstants.toArray(new CallWidgetLocation[allConstants.size()]);
    }

    public static String getDisplayName(Context context, CallWidgetLocation callWidgetLocation) {
        int i = C22111.f1291xd78b8ea8[callWidgetLocation.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : AppUtil.getUpperCaseStringResource(context, C2083R.string.settings_screen_call_widget_position_custom) : AppUtil.getUpperCaseStringResource(context, C2083R.string.settings_screen_call_widget_position_bottom) : AppUtil.getUpperCaseStringResource(context, C2083R.string.settings_screen_call_widget_position_middle) : AppUtil.getUpperCaseStringResource(context, C2083R.string.settings_screen_call_widget_position_top) : AppUtil.getUpperCaseStringResource(context, C2083R.string.settings_screen_call_widget_position_auto);
    }

    public int getVerticalOffset() {
        return this.verticalOffset;
    }

    public void setVerticalOffset(int i) {
        this.verticalOffset = i;
    }
}
