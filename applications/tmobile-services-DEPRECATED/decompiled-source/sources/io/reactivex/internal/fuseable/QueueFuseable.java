package io.reactivex.internal.fuseable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/fuseable/QueueFuseable.class */
public interface QueueFuseable<T> extends SimpleQueue<T> {
    int requestFusion(int i);
}
