.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Loe;


# instance fields
.field public final a:Lke;


# direct methods
.method public constructor <init>(Lke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lke;

    return-void
.end method


# virtual methods
.method public b(Lqe;Lme$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lke;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lke;->a(Lqe;Lme$a;ZLue;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lke;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lke;->a(Lqe;Lme$a;ZLue;)V

    return-void
.end method
