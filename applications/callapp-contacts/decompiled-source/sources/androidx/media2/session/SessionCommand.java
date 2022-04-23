package androidx.media2.session;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.e.a;
import androidx.versionedparcelable.c;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommand.class */
public final class SessionCommand implements c {

    /* renamed from: a  reason: collision with root package name */
    static final SparseArray<List<Integer>> f4540a;

    /* renamed from: b  reason: collision with root package name */
    static final SparseArray<List<Integer>> f4541b;

    /* renamed from: c  reason: collision with root package name */
    static final SparseArray<List<Integer>> f4542c;

    /* renamed from: d  reason: collision with root package name */
    static final SparseArray<List<Integer>> f4543d;
    static final SparseArray<List<Integer>> e;
    int f;
    String g;
    Bundle h;

    static {
        SparseArray<List<Integer>> sparseArray = new SparseArray<>();
        f4540a = sparseArray;
        SparseArray<List<Integer>> sparseArray2 = new SparseArray<>();
        f4541b = sparseArray2;
        sparseArray.put(1, Arrays.asList(10000, 10001, 10002, 10003, 10004, 11000, 11001, 11002));
        sparseArray2.put(1, Arrays.asList(10005, 10006, 10007, 10008, 10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016, 10017, 10018));
        sparseArray2.put(2, Collections.singletonList(10019));
        SparseArray<List<Integer>> sparseArray3 = new SparseArray<>();
        f4542c = sparseArray3;
        sparseArray3.put(1, Arrays.asList(30000, 30001));
        SparseArray<List<Integer>> sparseArray4 = new SparseArray<>();
        f4543d = sparseArray4;
        sparseArray4.put(1, Arrays.asList(Integer.valueOf((int) PangleAdapterConfiguration.CONTENT_TYPE_ERROR), 40001, 40002, Integer.valueOf((int) ApiErrorData.ErrorCodes.BadRequest.InvalidRequest), 40010));
        sparseArray4.put(2, Collections.singletonList(40011));
        SparseArray<List<Integer>> sparseArray5 = new SparseArray<>();
        e = sparseArray5;
        sparseArray5.put(1, Arrays.asList(Integer.valueOf((int) ApiErrorData.ErrorCodes.InternalServerError.InternalError), 50001, 50002, 50003, 50004, 50005, 50006));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionCommand() {
    }

    public SessionCommand(int i) {
        if (i != 0) {
            this.f = i;
            this.g = null;
            this.h = null;
            return;
        }
        throw new IllegalArgumentException("commandCode shouldn't be COMMAND_CODE_CUSTOM");
    }

    public SessionCommand(String str, Bundle bundle) {
        Objects.requireNonNull(str, "action shouldn't be null");
        this.f = 0;
        this.g = str;
        this.h = bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        return this.f == sessionCommand.f && TextUtils.equals(this.g, sessionCommand.g);
    }

    public final int hashCode() {
        return a.a(this.g, Integer.valueOf(this.f));
    }
}
