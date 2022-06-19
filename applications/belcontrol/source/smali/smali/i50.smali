.class public Li50;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La50;


# instance fields
.field public final c:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "La50$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lu70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu70<",
            "La50$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lve;

    invoke-direct {v0}, Lve;-><init>()V

    iput-object v0, p0, Li50;->c:Lve;

    invoke-static {}, Lu70;->s()Lu70;

    move-result-object v0

    iput-object v0, p0, Li50;->d:Lu70;

    sget-object v0, La50;->b:La50$b$b;

    invoke-virtual {p0, v0}, Li50;->a(La50$b;)V

    return-void
.end method


# virtual methods
.method public a(La50$b;)V
    .locals 1

    iget-object v0, p0, Li50;->c:Lve;

    invoke-virtual {v0, p1}, Lve;->j(Ljava/lang/Object;)V

    instance-of v0, p1, La50$b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li50;->d:Lu70;

    check-cast p1, La50$b$c;

    invoke-virtual {v0, p1}, Lu70;->o(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, La50$b$a;

    if-eqz v0, :cond_1

    check-cast p1, La50$b$a;

    iget-object v0, p0, Li50;->d:Lu70;

    invoke-virtual {p1}, La50$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu70;->p(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
