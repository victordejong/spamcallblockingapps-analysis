.class public La21$c;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lve<",
        "Lq71$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:La21;


# direct methods
.method public constructor <init>(La21;)V
    .locals 0

    iput-object p1, p0, La21$c;->k:La21;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    iget-object v0, p0, La21$c;->k:La21;

    iget-object v0, v0, La21;->j:Lve;

    invoke-static {}, Lq71$c;->b()Lq71$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
