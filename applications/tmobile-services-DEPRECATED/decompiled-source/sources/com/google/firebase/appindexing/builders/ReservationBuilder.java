package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/ReservationBuilder.class */
public final class ReservationBuilder extends IndexableBuilder<ReservationBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ReservationBuilder() {
        super("Reservation");
    }

    public final ReservationBuilder setPartySize(@NonNull long j) {
        return put("partySize", j);
    }

    public final ReservationBuilder setReservationFor(@NonNull LocalBusinessBuilder localBusinessBuilder) {
        return put("reservationFor", localBusinessBuilder);
    }

    public final ReservationBuilder setStartDate(@NonNull Date date) {
        Preconditions.m14523k(date);
        return put("startDate", date.getTime());
    }
}
