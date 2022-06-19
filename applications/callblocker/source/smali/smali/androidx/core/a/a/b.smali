.class public final Landroidx/core/a/a/b;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# instance fields
.field private final a:Landroid/graphics/Shader;

.field private final b:Landroid/content/res/ColorStateList;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/core/a/a/b;->a:Landroid/graphics/Shader;

    .line 63
    iput-object p2, p0, Landroidx/core/a/a/b;->b:Landroid/content/res/ColorStateList;

    .line 64
    iput p3, p0, Landroidx/core/a/a/b;->c:I

    .line 65
    return-void
.end method

.method static a(I)Landroidx/core/a/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    new-instance v0, Landroidx/core/a/a/b;

    invoke-direct {v0, v1, v1, p0}, Landroidx/core/a/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static a(Landroid/content/res/ColorStateList;)Landroidx/core/a/a/b;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroidx/core/a/a/b;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Landroidx/core/a/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/a/a/b;
    .locals 3

    .prologue
    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/core/a/a/b;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/a/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "ComplexColorCompat"

    const-string/jumbo v2, "Failed to inflate ComplexColor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/graphics/Shader;)Landroidx/core/a/a/b;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroidx/core/a/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/core/a/a/b;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/a/a/b;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 155
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    .line 159
    :cond_1
    if-eq v0, v4, :cond_2

    .line 160
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 163
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :sswitch_0
    const-string/jumbo v1, "selector"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "gradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-static {p0, v2, v3, p2}, Landroidx/core/a/a/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/a/a/b;->a(Landroid/content/res/ColorStateList;)Landroidx/core/a/a/b;

    move-result-object v0

    .line 168
    :goto_1
    return-object v0

    :pswitch_1
    invoke-static {p0, v2, v3, p2}, Landroidx/core/a/a/d;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/a/a/b;->a(Landroid/graphics/Shader;)Landroidx/core/a/a/b;

    move-result-object v0

    goto :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x557f730 -> :sswitch_1
        0x4705f3df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroidx/core/a/a/b;->a:Landroid/graphics/Shader;

    return-object v0
.end method

.method public a([I)Z
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Landroidx/core/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Landroidx/core/a/a/b;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroidx/core/a/a/b;->b:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 110
    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 112
    iget v2, p0, Landroidx/core/a/a/b;->c:I

    if-eq v1, v2, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 114
    iput v1, p0, Landroidx/core/a/a/b;->c:I

    .line 117
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroidx/core/a/a/b;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Landroidx/core/a/a/b;->c:I

    .line 91
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroidx/core/a/a/b;->a:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroidx/core/a/a/b;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/a/a/b;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/a/a/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Landroidx/core/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/a/a/b;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
