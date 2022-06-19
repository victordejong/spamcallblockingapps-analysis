.class public final synthetic Ltg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lug;

.field public final b:Lhh;


# direct methods
.method public constructor <init>(Lug;Lhh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg;->a:Lug;

    iput-object p2, p0, Ltg;->b:Lhh;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ltg;->a:Lug;

    iget-object v1, p0, Ltg;->b:Lhh;

    invoke-virtual {v0, v1}, Lug;->z(Lhh;)V

    return-void
.end method
