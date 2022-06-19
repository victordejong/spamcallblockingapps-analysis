package it.gmariotti.cardslib.library.view.listener;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/UndoCard.class */
public class UndoCard implements Parcelable {
    public static final Parcelable.Creator<UndoCard> CREATOR = new Parcelable.Creator<UndoCard>() { // from class: it.gmariotti.cardslib.library.view.listener.UndoCard.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UndoCard createFromParcel(Parcel parcel) {
            return new UndoCard(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UndoCard[] newArray(int i) {
            return new UndoCard[i];
        }
    };
    public String[] itemId;
    public int[] itemPosition;

    protected UndoCard(Parcel parcel) {
    }

    public UndoCard(int[] iArr, String[] strArr) {
        this.itemPosition = iArr;
        this.itemId = strArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
