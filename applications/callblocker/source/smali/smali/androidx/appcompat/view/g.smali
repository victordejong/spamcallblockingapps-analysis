.class public Landroidx/appcompat/view/g;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/g$b;,
        Landroidx/appcompat/view/g$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final c:[Ljava/lang/Object;

.field final d:[Ljava/lang/Object;

.field e:Landroid/content/Context;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    .line 85
    sget-object v0, Landroidx/appcompat/view/g;->a:[Ljava/lang/Class;

    sput-object v0, Landroidx/appcompat/view/g;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/g;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/appcompat/view/g;->d:[Ljava/lang/Object;

    .line 105
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object p1

    .line 234
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 235
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 145
    new-instance v8, Landroidx/appcompat/view/g$b;

    invoke-direct {v8, p0, p3}, Landroidx/appcompat/view/g$b;-><init>(Landroidx/appcompat/view/g;Landroid/view/Menu;)V

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 154
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    move v1, v7

    move-object v3, v5

    move v6, v7

    move v4, v0

    .line 168
    :goto_1
    if-nez v1, :cond_c

    .line 169
    packed-switch v4, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 219
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v1, v0

    goto :goto_1

    .line 162
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expecting menu, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 165
    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 171
    :pswitch_0
    if-eqz v6, :cond_4

    move v0, v1

    .line 172
    goto :goto_2

    .line 175
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 176
    const-string/jumbo v0, "group"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {v8, p2}, Landroidx/appcompat/view/g$b;->a(Landroid/util/AttributeSet;)V

    move v0, v1

    goto :goto_2

    .line 178
    :cond_5
    const-string/jumbo v0, "item"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    invoke-virtual {v8, p2}, Landroidx/appcompat/view/g$b;->b(Landroid/util/AttributeSet;)V

    move v0, v1

    goto :goto_2

    .line 180
    :cond_6
    const-string/jumbo v0, "menu"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual {v8}, Landroidx/appcompat/view/g$b;->c()Landroid/view/SubMenu;

    move-result-object v0

    .line 185
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    move v0, v1

    .line 186
    goto :goto_2

    :cond_7
    move v0, v1

    move-object v3, v4

    move v6, v2

    .line 190
    goto :goto_2

    .line 193
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v6, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    move-object v3, v5

    move v6, v7

    .line 196
    goto :goto_2

    .line 197
    :cond_8
    const-string/jumbo v4, "group"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 198
    invoke-virtual {v8}, Landroidx/appcompat/view/g$b;->a()V

    move v0, v1

    goto :goto_2

    .line 199
    :cond_9
    const-string/jumbo v4, "item"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 202
    invoke-virtual {v8}, Landroidx/appcompat/view/g$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, v8, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    if-eqz v0, :cond_a

    iget-object v0, v8, Landroidx/appcompat/view/g$b;->a:Landroidx/core/h/b;

    .line 204
    invoke-virtual {v0}, Landroidx/core/h/b;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    invoke-virtual {v8}, Landroidx/appcompat/view/g$b;->c()Landroid/view/SubMenu;

    move v0, v1

    goto/16 :goto_2

    .line 207
    :cond_a
    invoke-virtual {v8}, Landroidx/appcompat/view/g$b;->b()V

    move v0, v1

    goto/16 :goto_2

    .line 210
    :cond_b
    const-string/jumbo v4, "menu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 211
    goto/16 :goto_2

    .line 216
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_c
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    .line 227
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 4

    .prologue
    .line 119
    instance-of v0, p2, Landroidx/core/b/a/a;

    if-nez v0, :cond_1

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/g;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 129
    invoke-direct {p0, v1, v0, p2}, Landroidx/appcompat/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 136
    :cond_2
    throw v0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    const-string/jumbo v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
