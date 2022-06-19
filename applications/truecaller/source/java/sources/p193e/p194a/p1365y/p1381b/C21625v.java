package p193e.p194a.p1365y.p1381b;

import android.location.Location;
import android.util.Pair;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import s1.z.c.l;
/* renamed from: e.a.y.b.v */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/v.class */
public final class C21625v implements AbstractC21624u {
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21624u
    /* renamed from: a */
    public Pair<String, String> mo9350a(Location location) {
        l.e(location, "location");
        try {
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
            decimalFormatSymbols.setDecimalSeparator('.');
            DecimalFormat decimalFormat = new DecimalFormat("#.#");
            decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
            return new Pair<>(decimalFormat.parse(String.valueOf(location.getLatitude())).toString(), decimalFormat.parse(String.valueOf(location.getLongitude())).toString());
        } catch (ParseException e) {
            return null;
        }
    }
}
