.class public interface abstract Lscala/Proxy$Typed;
.super Ljava/lang/Object;
.source "Proxy.scala"

# interfaces
.implements Lscala/Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Typed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Proxy;"
    }
.end annotation


# virtual methods
.method public abstract self()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
