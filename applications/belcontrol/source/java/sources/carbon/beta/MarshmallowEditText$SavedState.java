package carbon.beta;

import android.os.Parcel;
import android.os.Parcelable;
import carbon.widget.EditText;
/* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$SavedState.class */
public class MarshmallowEditText$SavedState implements Parcelable {

    /* renamed from: a */
    public int f2230a;

    /* renamed from: b */
    public Parcelable f2231b;

    /* renamed from: c */
    public static final MarshmallowEditText$SavedState f2229c = new 1();
    public static final Parcelable.Creator<MarshmallowEditText$SavedState> CREATOR = new C0300a();

    /* renamed from: carbon.beta.MarshmallowEditText$SavedState$a */
    /* loaded from: classes-dex2jar.jar:carbon/beta/MarshmallowEditText$SavedState$a.class */
    public static final class C0300a implements Parcelable.Creator<MarshmallowEditText$SavedState> {
        /* renamed from: a */
        public MarshmallowEditText$SavedState createFromParcel(Parcel parcel) {
            return new MarshmallowEditText$SavedState(parcel, null);
        }

        /* renamed from: b */
        public MarshmallowEditText$SavedState[] newArray(int i) {
            return new MarshmallowEditText$SavedState[i];
        }
    }

    public MarshmallowEditText$SavedState() {
        this.f2231b = null;
    }

    public MarshmallowEditText$SavedState(Parcel parcel) {
        MarshmallowEditText$SavedState readParcelable = parcel.readParcelable(EditText.class.getClassLoader());
        this.f2231b = readParcelable == null ? f2229c : readParcelable;
        this.f2230a = parcel.readInt();
    }

    public /* synthetic */ MarshmallowEditText$SavedState(Parcel parcel, MarshmallowEditText$a marshmallowEditText$a) {
        this(parcel);
    }

    public MarshmallowEditText$SavedState(Parcelable parcelable) {
        this.f2231b = parcelable == f2229c ? null : parcelable;
    }

    /* renamed from: a */
    public Parcelable m5394a() {
        return this.f2231b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2231b, i);
        parcel.writeInt(this.f2230a);
    }
}
