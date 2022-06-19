.class public Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/c/a;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->a:F

    .line 41
    iput p2, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->b:F

    .line 42
    iput p3, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->c:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->a:F

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->b:F

    .line 28
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->c:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 53
    iget p1, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->a:F

    iget p2, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->b:F

    iget v0, p0, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    .line 54
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public final a([FI)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
