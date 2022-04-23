package gogolook.callgogolook2.gson;

import android.annotation.TargetApi;
import java.util.ArrayList;
import java.util.Objects;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p551p0.C13332i;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/TextSearchResultEntry.class */
public class TextSearchResultEntry {
    public static final String ADDRESS = "addr";
    public static final String CALL_COUNT = "call_count";
    public static final String FAVORITE_COUNT = "favor_count";
    public static final String MATCHED_BY = "matched_by";
    public static final String SERVICE_AREAS = "sareas";
    @AbstractC10120c(ADDRESS)
    @AbstractC10118a
    public String address;
    @AbstractC10120c(CALL_COUNT)
    @AbstractC10118a
    public int callCount;
    public double distance;
    public String e164;
    @AbstractC10120c(FAVORITE_COUNT)
    @AbstractC10118a
    public int favoriteCount;
    @AbstractC10120c(MATCHED_BY)
    @AbstractC10118a
    public int matchedBy;
    public String name;
    public String num;
    public int listType = 4;
    public ArrayList<Double> lnglat = new ArrayList<>();
    public ArrayList<String> label = new ArrayList<>();
    public ArrayList<String> matched_labels = new ArrayList<>();
    public ArrayList<C13332i> autoCompleteLabel = new ArrayList<>();
    public ArrayList<String> category = new ArrayList<>();
    public int refType = -1;
    @AbstractC10120c(SERVICE_AREAS)
    @AbstractC10118a
    public ArrayList<String> serviceAreas = new ArrayList<>();

    public boolean equals(Object obj) {
        String str;
        TextSearchResultEntry textSearchResultEntry = (TextSearchResultEntry) obj;
        String str2 = this.e164;
        if (str2 != null && (str = textSearchResultEntry.e164) != null && str2.equals(str)) {
            return true;
        }
        int i = textSearchResultEntry.listType;
        int i2 = this.listType;
        if (i != i2) {
            return false;
        }
        if (i2 == 0) {
            String str3 = textSearchResultEntry.name;
            return str3 != null && str3.equals(this.name);
        } else if (i2 == 1) {
            return true;
        } else {
            switch (i2) {
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return true;
                default:
                    return false;
            }
        }
    }

    @TargetApi(19)
    public int hashCode() {
        return Objects.hash(this.e164, Integer.valueOf(this.listType), this.name);
    }
}
