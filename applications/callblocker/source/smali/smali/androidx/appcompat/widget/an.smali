.class public Landroidx/appcompat/widget/an;
.super Ljava/lang/Object;
.source "TintInfo.java"


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Landroid/graphics/PorterDuff$Mode;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    iput-object v1, p0, Landroidx/appcompat/widget/an;->a:Landroid/content/res/ColorStateList;

    .line 36
    iput-boolean v0, p0, Landroidx/appcompat/widget/an;->d:Z

    .line 37
    iput-object v1, p0, Landroidx/appcompat/widget/an;->b:Landroid/graphics/PorterDuff$Mode;

    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/widget/an;->c:Z

    .line 39
    return-void
.end method
