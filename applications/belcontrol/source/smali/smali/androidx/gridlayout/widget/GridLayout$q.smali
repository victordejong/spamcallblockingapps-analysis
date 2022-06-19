.class public Landroidx/gridlayout/widget/GridLayout$q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# static fields
.field public static final e:Landroidx/gridlayout/widget/GridLayout$q;


# instance fields
.field public final a:Z

.field public final b:Landroidx/gridlayout/widget/GridLayout$n;

.field public final c:Landroidx/gridlayout/widget/GridLayout$i;

.field public final d:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroidx/gridlayout/widget/GridLayout;->G(I)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object v0

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(ZIILandroidx/gridlayout/widget/GridLayout$i;F)V
    .locals 1

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$n;

    add-int/2addr p3, p2

    invoke-direct {v0, p2, p3}, Landroidx/gridlayout/widget/GridLayout$n;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroidx/gridlayout/widget/GridLayout$q;-><init>(ZLandroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$i;F)V

    return-void
.end method

.method public constructor <init>(ZLandroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$i;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$q;->a:Z

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    iput-object p3, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    iput p4, p0, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    return-void
.end method


# virtual methods
.method public final a(Landroidx/gridlayout/widget/GridLayout$n;)Landroidx/gridlayout/widget/GridLayout$q;
    .locals 4

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$q;

    iget-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$q;->a:Z

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    iget v3, p0, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/gridlayout/widget/GridLayout$q;-><init>(ZLandroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$i;F)V

    return-object v0
.end method

.method public b(Z)Landroidx/gridlayout/widget/GridLayout$i;
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->t:Landroidx/gridlayout/widget/GridLayout$i;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->y:Landroidx/gridlayout/widget/GridLayout$i;

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->D:Landroidx/gridlayout/widget/GridLayout$i;

    :goto_0
    return-object p1

    :cond_2
    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->E:Landroidx/gridlayout/widget/GridLayout$i;

    return-object p1
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->t:Landroidx/gridlayout/widget/GridLayout$i;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$q;

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {v2, p1}, Landroidx/gridlayout/widget/GridLayout$n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$n;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$q;->c:Landroidx/gridlayout/widget/GridLayout$i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
