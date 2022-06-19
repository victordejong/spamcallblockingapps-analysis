.class public final synthetic Lip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lqp$a;

.field public final b:Lqp;

.field public final c:Lhp$a;


# direct methods
.method public constructor <init>(Lqp$a;Lqp;Lhp$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lip;->a:Lqp$a;

    iput-object p2, p0, Lip;->b:Lqp;

    iput-object p3, p0, Lip;->c:Lhp$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lip;->a:Lqp$a;

    iget-object v1, p0, Lip;->b:Lqp;

    iget-object v2, p0, Lip;->c:Lhp$a;

    invoke-virtual {v0, v1, v2}, Lqp$a;->j(Lqp;Lhp$a;)V

    return-void
.end method
