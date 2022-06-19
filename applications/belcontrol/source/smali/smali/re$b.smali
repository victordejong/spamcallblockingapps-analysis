.class public Lre$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lme$b;

.field public b:Loe;


# direct methods
.method public constructor <init>(Lpe;Lme$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lte;->f(Ljava/lang/Object;)Loe;

    move-result-object p1

    iput-object p1, p0, Lre$b;->b:Loe;

    iput-object p2, p0, Lre$b;->a:Lme$b;

    return-void
.end method


# virtual methods
.method public a(Lqe;Lme$a;)V
    .locals 2

    invoke-static {p2}, Lre;->h(Lme$a;)Lme$b;

    move-result-object v0

    iget-object v1, p0, Lre$b;->a:Lme$b;

    invoke-static {v1, v0}, Lre;->l(Lme$b;Lme$b;)Lme$b;

    move-result-object v1

    iput-object v1, p0, Lre$b;->a:Lme$b;

    iget-object v1, p0, Lre$b;->b:Loe;

    invoke-interface {v1, p1, p2}, Loe;->b(Lqe;Lme$a;)V

    iput-object v0, p0, Lre$b;->a:Lme$b;

    return-void
.end method
