package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeSource;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream.class */
abstract class AbstractMaybeWithUpstream<T, R> extends Maybe<R> implements HasUpstreamMaybeSource<T> {

    /* renamed from: f */
    protected final MaybeSource<T> f16960f;
}
