.class public Lc7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf7/a;

.field public final b:Ljava/lang/String;

.field public final c:La7/e;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;La7/e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf7/a;

    invoke-direct {v0, p1}, Lf7/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc7/b;->a:Lf7/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc7/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lc7/b;->c:La7/e;

    iput-object p3, p0, Lc7/b;->d:Ljava/lang/String;

    return-void
.end method
