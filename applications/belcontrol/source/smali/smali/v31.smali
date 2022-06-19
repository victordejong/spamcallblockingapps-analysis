.class public abstract Lv31;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lw31;Lx31;)Lv31;
    .locals 1

    invoke-static {}, Lb51;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf41;

    invoke-direct {v0, p0, p1}, Lf41;-><init>(Lw31;Lx31;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;La41;Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e()V
.end method
