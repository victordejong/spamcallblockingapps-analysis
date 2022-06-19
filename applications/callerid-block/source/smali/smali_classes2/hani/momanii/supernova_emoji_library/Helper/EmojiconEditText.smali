.class public Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;
.super Landroid/widget/EditText;
.source ""


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    invoke-direct {p0, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    invoke-direct {p0, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lf/a/a/c;->Emojicon:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lf/a/a/c;->Emojicon_emojiconSize:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconAlignment:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->c:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconUseSystemDefault:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->d:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b:I

    iget v3, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->c:I

    iget v4, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->d:I

    iget-boolean v5, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    invoke-static/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/b;->b(Landroid/content/Context;Landroid/text/Spannable;IIIZ)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b()V

    return-void
.end method

.method public setEmojiconSize(I)V
    .locals 0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b:I

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->b()V

    return-void
.end method

.method public setUseSystemDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconEditText;->e:Z

    return-void
.end method
