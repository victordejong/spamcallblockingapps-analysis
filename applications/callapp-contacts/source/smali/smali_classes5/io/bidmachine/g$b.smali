.class final Lio/bidmachine/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private atStartOfLine:Z

.field private final indent:Ljava/lang/StringBuilder;

.field private final output:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/g$b;->indent:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lio/bidmachine/g$b;->atStartOfLine:Z

    .line 237
    iput-object p1, p0, Lio/bidmachine/g$b;->output:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lio/bidmachine/g$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lio/bidmachine/g$b;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private write(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-boolean v0, p0, Lio/bidmachine/g$b;->atStartOfLine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lio/bidmachine/g$b;->atStartOfLine:Z

    .line 272
    iget-object v0, p0, Lio/bidmachine/g$b;->output:Ljava/lang/Appendable;

    iget-object v1, p0, Lio/bidmachine/g$b;->indent:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 275
    :cond_0
    iget-object v0, p0, Lio/bidmachine/g$b;->output:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    return-void
.end method


# virtual methods
.method final indent()V
    .locals 2

    .line 241
    iget-object v0, p0, Lio/bidmachine/g$b;->indent:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final outdent()V
    .locals 3

    .line 245
    iget-object v0, p0, Lio/bidmachine/g$b;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lio/bidmachine/g$b;->indent:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final print(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 258
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 259
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/bidmachine/g$b;->write(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 261
    iput-boolean v2, p0, Lio/bidmachine/g$b;->atStartOfLine:Z

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/g$b;->write(Ljava/lang/CharSequence;)V

    return-void
.end method
