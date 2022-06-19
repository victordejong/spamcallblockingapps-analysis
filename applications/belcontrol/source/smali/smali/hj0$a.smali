.class public Lhj0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhj0;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzi0$b;

.field public final synthetic b:Lhj0;


# direct methods
.method public constructor <init>(Lhj0;Lzi0$b;)V
    .locals 0

    iput-object p1, p0, Lhj0$a;->b:Lhj0;

    iput-object p2, p0, Lhj0$a;->a:Lzi0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lhj0$a;->a:Lzi0$b;

    iget-object v1, p0, Lhj0$a;->b:Lhj0;

    invoke-static {v1}, Lhj0;->e(Lhj0;)Lzi0;

    move-result-object v1

    iget-object v2, p0, Lhj0$a;->b:Lhj0;

    invoke-static {v2}, Lhj0;->g(Lhj0;)J

    move-result-wide v2

    iget-object v4, p0, Lhj0$a;->b:Lhj0;

    invoke-static {v4}, Lhj0;->h(Lhj0;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lzi0$b;->b(Lzi0;JJ)V

    return-void
.end method
