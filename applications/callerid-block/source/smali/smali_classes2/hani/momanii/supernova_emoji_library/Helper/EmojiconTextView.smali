.class public Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->f:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->f:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    invoke-direct {p0, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->e:I

    const/4 p3, -0x1

    iput p3, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->f:I

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    invoke-direct {p0, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->d:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lf/a/a/c;->Emojicon:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lf/a/a/c;->Emojicon_emojiconSize:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->b:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconAlignment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->c:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconTextStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->e:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconTextLength:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->f:I

    sget v0, Lf/a/a/c;->Emojicon_emojiconUseSystemDefault:I

    iget-boolean v1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setEmojiconSize(I)V
    .locals 0

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->b:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->b:I

    iget v4, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->c:I

    iget v5, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->d:I

    iget v6, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->e:I

    iget v7, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->f:I

    iget-boolean v8, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lhani/momanii/supernova_emoji_library/Helper/b;->a(Landroid/content/Context;Landroid/text/Spannable;IIIIIZ)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setUseSystemDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->g:Z

    return-void
.end method
