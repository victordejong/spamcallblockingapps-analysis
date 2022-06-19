.class public Le5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le5/p;


# direct methods
.method public constructor <init>(Le5/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/r;->a:Le5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/r;->a:Le5/p;

    invoke-static {v0}, Le5/p;->a(Le5/p;)V

    const/4 v0, 0x0

    return-object v0
.end method
