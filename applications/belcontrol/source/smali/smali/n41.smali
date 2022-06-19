.class public Ln41;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld51;

.field public final b:Ljava/lang/String;

.field public final c:La41;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;La41;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld51;

    invoke-direct {v0, p1}, Ld51;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ln41;->a:Ld51;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln41;->b:Ljava/lang/String;

    iput-object p2, p0, Ln41;->c:La41;

    iput-object p3, p0, Ln41;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ld51;
    .locals 1

    iget-object v0, p0, Ln41;->a:Ld51;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln41;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()La41;
    .locals 1

    iget-object v0, p0, Ln41;->c:La41;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln41;->d:Ljava/lang/String;

    return-object v0
.end method
