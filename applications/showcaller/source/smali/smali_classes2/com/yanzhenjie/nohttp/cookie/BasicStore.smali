.class public abstract Lcom/yanzhenjie/nohttp/cookie/BasicStore;
.super Ljava/lang/Object;
.source "BasicStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/cookie/BasicStore<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/net/CookieStore;"
    }
.end annotation


# instance fields
.field private mEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->mEnable:Z

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)Lcom/yanzhenjie/nohttp/cookie/BasicStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->mEnable:Z

    return-object p0
.end method
