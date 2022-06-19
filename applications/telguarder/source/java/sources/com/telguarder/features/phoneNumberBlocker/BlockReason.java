package com.telguarder.features.phoneNumberBlocker;

import com.telguarder.C2083R;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockReason.class */
public enum BlockReason {
    REASON_TELEMARKETING,
    REASON_SURVEY,
    REASON_POLL,
    REASON_FRAUD,
    REASON_OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.telguarder.features.phoneNumberBlocker.BlockReason$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockReason$1.class */
    public static /* synthetic */ class C22661 {

        /* renamed from: $SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason */
        static final /* synthetic */ int[] f1296x21d7e3ad;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[BlockReason.values().length];
            f1296x21d7e3ad = iArr;
            try {
                iArr[BlockReason.REASON_TELEMARKETING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1296x21d7e3ad[BlockReason.REASON_SURVEY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1296x21d7e3ad[BlockReason.REASON_POLL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1296x21d7e3ad[BlockReason.REASON_FRAUD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1296x21d7e3ad[BlockReason.REASON_OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public static ArrayList<BlockReason> getAllReasons() {
        ArrayList<BlockReason> arrayList = new ArrayList<>();
        arrayList.add(REASON_TELEMARKETING);
        arrayList.add(REASON_SURVEY);
        arrayList.add(REASON_POLL);
        arrayList.add(REASON_FRAUD);
        arrayList.add(REASON_OTHER);
        return arrayList;
    }

    public static BlockReason ofBackendKeyword(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -891050150:
                if (str.equals("survey")) {
                    z = false;
                    break;
                }
                break;
            case 3446719:
                if (str.equals("poll")) {
                    z = true;
                    break;
                }
                break;
            case 97692260:
                if (str.equals("fraud")) {
                    z = true;
                    break;
                }
                break;
            case 106069776:
                if (str.equals("other")) {
                    z = true;
                    break;
                }
                break;
            case 373425596:
                if (str.equals("telemarketing")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return REASON_SURVEY;
            case true:
                return REASON_POLL;
            case true:
                return REASON_FRAUD;
            case true:
                return REASON_OTHER;
            case true:
                return REASON_TELEMARKETING;
            default:
                return REASON_OTHER;
        }
    }

    public String backendKeyword() {
        int i = C22661.f1296x21d7e3ad[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "other" : "fraud" : "poll" : "survey" : "telemarketing";
    }

    public int displayableNameId() {
        int i = C22661.f1296x21d7e3ad[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? C2083R.string.last_call_entry_other : C2083R.string.last_call_entry_fraud : C2083R.string.last_call_entry_poll : C2083R.string.last_call_entry_survey : C2083R.string.last_call_entry_telemarketing;
    }
}
