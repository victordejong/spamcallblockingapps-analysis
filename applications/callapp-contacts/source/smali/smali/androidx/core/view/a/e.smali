.class public final Landroidx/core/view/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    iput-object p1, p0, Landroidx/core/view/a/e;->a:Landroid/view/accessibility/AccessibilityRecord;

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 766
    :cond_0
    instance-of v1, p1, Landroidx/core/view/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 769
    :cond_1
    check-cast p1, Landroidx/core/view/a/e;

    .line 770
    iget-object v1, p0, Landroidx/core/view/a/e;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v1, :cond_2

    .line 771
    iget-object p1, p1, Landroidx/core/view/a/e;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz p1, :cond_3

    return v2

    .line 774
    :cond_2
    iget-object p1, p1, Landroidx/core/view/a/e;->a:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    iget-object v0, p0, Landroidx/core/view/a/e;->a:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
