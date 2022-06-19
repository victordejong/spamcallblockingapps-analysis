.class final Landroidx/e/a/b$7;
.super Landroidx/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/e/a/b;-><init>(Landroidx/e/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/d;

.field final synthetic b:Landroidx/e/a/b;


# direct methods
.method constructor <init>(Landroidx/e/a/b;Ljava/lang/String;Landroidx/e/a/d;)V
    .locals 0

    .line 335
    iput-object p1, p0, Landroidx/e/a/b$7;->b:Landroidx/e/a/b;

    iput-object p3, p0, Landroidx/e/a/b$7;->a:Landroidx/e/a/d;

    invoke-direct {p0, p2}, Landroidx/e/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 0

    .line 338
    iget-object p1, p0, Landroidx/e/a/b$7;->a:Landroidx/e/a/d;

    .line 1072
    iget p1, p1, Landroidx/e/a/d;->a:F

    return p1
.end method

.method public final a(Ljava/lang/Object;F)V
    .locals 0

    .line 343
    iget-object p1, p0, Landroidx/e/a/b$7;->a:Landroidx/e/a/d;

    .line 2063
    iput p2, p1, Landroidx/e/a/d;->a:F

    return-void
.end method
