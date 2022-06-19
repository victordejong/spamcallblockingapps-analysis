package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
import java.util.Objects;
import p193e.p194a.p1080o.p1102o.C18797j;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.o.b.a.a.i */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/i.class */
public final class C18678i extends m implements a<C18797j> {

    /* renamed from: b */
    public final /* synthetic */ OnDemandCallReasonPickerView f52517b;

    /* renamed from: c */
    public final /* synthetic */ Context f52518c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18678i(OnDemandCallReasonPickerView onDemandCallReasonPickerView, Context context) {
        super(0);
        this.f52517b = onDemandCallReasonPickerView;
        this.f52518c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f52518c);
        OnDemandCallReasonPickerView onDemandCallReasonPickerView = this.f52517b;
        Objects.requireNonNull(onDemandCallReasonPickerView, "parent");
        from.inflate(C3771R.layout.context_call_on_demand_picker_view, onDemandCallReasonPickerView);
        int i = C3771R.C3773id.cancelBtn;
        ImageButton imageButton = (ImageButton) onDemandCallReasonPickerView.findViewById(i);
        if (imageButton != null) {
            i = C3771R.C3773id.infoIcon;
            ImageButton imageButton2 = (ImageButton) onDemandCallReasonPickerView.findViewById(i);
            if (imageButton2 != null) {
                i = C3771R.C3773id.reasonsList;
                RecyclerView recyclerView = (RecyclerView) onDemandCallReasonPickerView.findViewById(i);
                if (recyclerView != null) {
                    i = C3771R.C3773id.title;
                    TextView textView = (TextView) onDemandCallReasonPickerView.findViewById(i);
                    if (textView != null) {
                        i = C3771R.C3773id.titleIcon;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) onDemandCallReasonPickerView.findViewById(i);
                        if (appCompatImageView != null) {
                            return new C18797j(onDemandCallReasonPickerView, imageButton, imageButton2, recyclerView, textView, appCompatImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(onDemandCallReasonPickerView.getResources().getResourceName(i)));
    }
}
