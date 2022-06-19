.class public final synthetic Lot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lnt$b;

.field public final b:Lnt$a;


# direct methods
.method public constructor <init>(Lnt$b;Lnt$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lot;->a:Lnt$b;

    iput-object p2, p0, Lot;->b:Lnt$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lot;->a:Lnt$b;

    iget-object v1, p0, Lot;->b:Lnt$a;

    invoke-virtual {v0, v1}, Lnt$b;->c(Lnt$a;)V

    return-void
.end method
