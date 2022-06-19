.class public final synthetic Lrs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lss$a;

.field public final b:Lss;


# direct methods
.method public constructor <init>(Lss$a;Lss;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs;->a:Lss$a;

    iput-object p2, p0, Lrs;->b:Lss;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lrs;->a:Lss$a;

    iget-object v1, p0, Lrs;->b:Lss;

    invoke-virtual {v0, v1}, Lss$a;->b(Lss;)V

    return-void
.end method
