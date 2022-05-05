package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/disposables/ListCompositeDisposable.class */
public final class ListCompositeDisposable implements Disposable, DisposableContainer {

    /* renamed from: f */
    List<Disposable> f15127f;

    /* renamed from: g */
    volatile boolean f15128g;

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: a */
    public boolean mo4426a(Disposable disposable) {
        if (!mo4424c(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: b */
    public boolean mo4425b(Disposable disposable) {
        ObjectHelper.m4363e(disposable, "d is null");
        if (!this.f15128g) {
            synchronized (this) {
                if (!this.f15128g) {
                    List<Disposable> list = this.f15127f;
                    List<Disposable> list2 = list;
                    if (list == null) {
                        list2 = new LinkedList<>();
                        this.f15127f = list2;
                    }
                    list2.add(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    /* renamed from: c */
    public boolean mo4424c(Disposable disposable) {
        ObjectHelper.m4363e(disposable, "Disposable item is null");
        if (this.f15128g) {
            return false;
        }
        synchronized (this) {
            if (this.f15128g) {
                return false;
            }
            List<Disposable> list = this.f15127f;
            if (list != null && list.remove(disposable)) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: d */
    void m4423d(List<Disposable> list) {
        if (list != null) {
            ArrayList arrayList = null;
            for (Disposable disposable : list) {
                try {
                    disposable.dispose();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(th);
                    arrayList = arrayList2;
                }
            }
            if (arrayList == null) {
                return;
            }
            if (arrayList.size() == 1) {
                throw ExceptionHelper.m3434e((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (!this.f15128g) {
            synchronized (this) {
                if (!this.f15128g) {
                    this.f15128g = true;
                    List<Disposable> list = this.f15127f;
                    this.f15127f = null;
                    m4423d(list);
                }
            }
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f15128g;
    }
}
