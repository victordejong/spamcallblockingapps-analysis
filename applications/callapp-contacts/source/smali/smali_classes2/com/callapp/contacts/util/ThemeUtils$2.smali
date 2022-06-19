.class final Lcom/callapp/contacts/util/ThemeUtils$2;
.super Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ThemeUtils;->a(Z[I)Landroid/util/SparseIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0

    .line 171
    iput-boolean p3, p0, Lcom/callapp/contacts/util/ThemeUtils$2;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ResourceRuntimeReplace/ThemeAttributes;-><init>(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ThemeUtils$2;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 190
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getColorPrimary()I
    .locals 2

    .line 174
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/util/ThemeUtils$2;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColorPrimaryDark()I
    .locals 2

    .line 184
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/util/ThemeUtils$2;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getColorPrimaryLight()I
    .locals 2

    .line 179
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/util/ThemeUtils$2;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
