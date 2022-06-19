.class public abstract Lbt$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lbt$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbt$e;

    invoke-direct {v0}, Lbt$e;-><init>()V

    iput-object v0, p0, Lbt$a;->a:Lbt$e;

    return-void
.end method


# virtual methods
.method public final a()Lbt;
    .locals 1

    iget-object v0, p0, Lbt$a;->a:Lbt$e;

    invoke-virtual {p0, v0}, Lbt$a;->b(Lbt$e;)Lbt;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lbt$e;)Lbt;
.end method

.method public bridge synthetic createDataSource()Lls;
    .locals 1

    invoke-virtual {p0}, Lbt$a;->a()Lbt;

    move-result-object v0

    return-object v0
.end method
