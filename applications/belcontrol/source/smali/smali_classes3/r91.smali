.class public Lr91;
.super Lv91;
.source ""


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv91;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lv91;->c:Lv91$b;

    invoke-interface {v0, p0}, Lv91$b;->a(Lv91;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lv91;->c:Lv91$b;

    invoke-interface {v0, p0}, Lv91$b;->d(Lv91;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr91;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr91;->g:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr91;->f:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr91;->g:Ljava/lang/String;

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lv91;->c:Lv91$b;

    invoke-interface {v0, p0}, Lv91$b;->c(Lv91;)V

    return-void
.end method
