package p205q0;

import android.database.Cursor;
import android.widget.Filter;
import androidx.appcompat.widget.View$OnClickListenerC0280t0;
/* renamed from: q0.b */
/* loaded from: classes-dex2jar.jar:q0/b.class */
public class C4141b extends Filter {

    /* renamed from: a */
    public AbstractC4142a f13066a;

    /* renamed from: q0.b$a */
    /* loaded from: classes-dex2jar.jar:q0/b$a.class */
    public interface AbstractC4142a {
    }

    public C4141b(AbstractC4142a abstractC4142a) {
        this.f13066a = abstractC4142a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return ((View$OnClickListenerC0280t0) this.f13066a).mo1354c((Cursor) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0079  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r6) {
        /*
            r5 = this;
            r0 = r5
            q0.b$a r0 = r0.f13066a
            androidx.appcompat.widget.t0 r0 = (androidx.appcompat.widget.View$OnClickListenerC0280t0) r0
            r7 = r0
            r0 = r7
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            if (r0 != 0) goto L17
            java.lang.String r0 = ""
            r6 = r0
            goto L1e
        L17:
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
        L1e:
            r0 = r7
            androidx.appcompat.widget.SearchView r0 = r0.f1096l
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L59
            r0 = r7
            androidx.appcompat.widget.SearchView r0 = r0.f1096l
            int r0 = r0.getWindowVisibility()
            if (r0 == 0) goto L35
            goto L59
        L35:
            r0 = r7
            r1 = r7
            android.app.SearchableInfo r1 = r1.f1097m     // Catch: java.lang.RuntimeException -> L4f
            r2 = r6
            r3 = 50
            android.database.Cursor r0 = r0.m8431g(r1, r2, r3)     // Catch: java.lang.RuntimeException -> L4f
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L59
            r0 = r6
            int r0 = r0.getCount()     // Catch: java.lang.RuntimeException -> L4f
            goto L5b
        L4f:
            r6 = move-exception
            java.lang.String r0 = "SuggestionsAdapter"
            java.lang.String r1 = "Search suggestions query threw an exception."
            r2 = r6
            int r0 = android.util.Log.w(r0, r1, r2)
        L59:
            r0 = 0
            r6 = r0
        L5b:
            android.widget.Filter$FilterResults r0 = new android.widget.Filter$FilterResults
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L79
            r0 = r7
            r1 = r6
            int r1 = r1.getCount()
            r0.count = r1
            r0 = r7
            r1 = r6
            r0.values = r1
            goto L83
        L79:
            r0 = r7
            r1 = 0
            r0.count = r1
            r0 = r7
            r1 = 0
            r0.values = r1
        L83:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p205q0.C4141b.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
    }

    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        AbstractC4142a abstractC4142a = this.f13066a;
        Cursor cursor = ((AbstractC4138a) abstractC4142a).f13058c;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((View$OnClickListenerC0280t0) abstractC4142a).mo1355b((Cursor) obj);
    }
}
