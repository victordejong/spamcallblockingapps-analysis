.class public Lx70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ljava/io/Writer;

.field public b:Ljava/io/PrintWriter;

.field public c:C

.field public d:C

.field public f:C

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lx70;-><init>(Ljava/io/Writer;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;C)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lx70;-><init>(Ljava/io/Writer;CC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CC)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lx70;-><init>(Ljava/io/Writer;CCC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCC)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lx70;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCCLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx70;->a:Ljava/io/Writer;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lx70;->b:Ljava/io/PrintWriter;

    iput-char p2, p0, Lx70;->c:C

    iput-char p3, p0, Lx70;->d:C

    iput-char p4, p0, Lx70;->f:C

    iput-object p5, p0, Lx70;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lx70;->f:C

    if-eqz v3, :cond_0

    iget-char v4, p0, Lx70;->d:C

    if-ne v2, v4, :cond_0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-eqz v3, :cond_1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lx70;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lx70;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iget-object v0, p0, Lx70;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    iget-char v0, p0, Lx70;->d:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-char v0, p0, Lx70;->f:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    if-eqz v1, :cond_1

    iget-char v2, p0, Lx70;->c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-char v3, p0, Lx70;->d:C

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0, v2}, Lx70;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lx70;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lx70;->d:C

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lx70;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lx70;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method
