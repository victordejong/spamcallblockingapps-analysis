package com.google.android.gms.internal.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzj.class */
public final class zzj implements People {
    @Override // com.google.android.gms.plus.People
    public final Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.zza(googleApiClient, true).zzb();
    }

    @Override // com.google.android.gms.plus.People
    public final PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, Collection<String> collection) {
        return googleApiClient.enqueue(new zzn(this, googleApiClient, collection));
    }

    @Override // com.google.android.gms.plus.People
    public final PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, String... strArr) {
        return googleApiClient.enqueue(new zzo(this, googleApiClient, strArr));
    }

    @Override // com.google.android.gms.plus.People
    public final PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.enqueue(new zzm(this, googleApiClient));
    }

    @Override // com.google.android.gms.plus.People
    public final PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, int i, String str) {
        return googleApiClient.enqueue(new zzk(this, googleApiClient, i, str));
    }

    @Override // com.google.android.gms.plus.People
    public final PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.enqueue(new zzl(this, googleApiClient, str));
    }
}
