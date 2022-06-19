.class final Lorg/mp4parser/aspectj/a/b/e;
.super Lorg/mp4parser/aspectj/a/b/a;
.source "SourceFile"

# interfaces
.implements Lorg/mp4parser/aspectj/lang/reflect/c;


# instance fields
.field d:Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/mp4parser/aspectj/a/b/a;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 29
    iput-object p7, p0, Lorg/mp4parser/aspectj/a/b/e;->d:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/mp4parser/aspectj/a/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/mp4parser/aspectj/a/b/h;)Ljava/lang/String;
    .locals 5

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1067
    iget v1, p0, Lorg/mp4parser/aspectj/a/b/f;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1156
    invoke-virtual {p0, v1}, Lorg/mp4parser/aspectj/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 1157
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1067
    iput v1, p0, Lorg/mp4parser/aspectj/a/b/f;->e:I

    .line 1068
    :cond_0
    iget v1, p0, Lorg/mp4parser/aspectj/a/b/f;->e:I

    .line 2078
    iget-boolean v2, p1, Lorg/mp4parser/aspectj/a/b/h;->d:Z

    const-string v3, " "

    const-string v4, ""

    if-nez v2, :cond_1

    goto :goto_0

    .line 2079
    :cond_1
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2080
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2081
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-boolean v1, p1, Lorg/mp4parser/aspectj/a/b/h;->b:Z

    if-eqz v1, :cond_4

    .line 3038
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/e;->d:Ljava/lang/Class;

    if-nez v1, :cond_3

    const/4 v1, 0x6

    .line 3039
    invoke-virtual {p0, v1}, Lorg/mp4parser/aspectj/a/b/f;->b(I)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/mp4parser/aspectj/a/b/e;->d:Ljava/lang/Class;

    .line 3040
    :cond_3
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/e;->d:Ljava/lang/Class;

    .line 47
    invoke-virtual {p1, v1}, Lorg/mp4parser/aspectj/a/b/h;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_4
    iget-boolean v1, p1, Lorg/mp4parser/aspectj/a/b/h;->b:Z

    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_5
    invoke-virtual {p0}, Lorg/mp4parser/aspectj/a/b/f;->a()Ljava/lang/Class;

    move-result-object v1

    .line 3079
    iget-object v2, p0, Lorg/mp4parser/aspectj/a/b/f;->g:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 3080
    invoke-virtual {p0}, Lorg/mp4parser/aspectj/a/b/f;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mp4parser/aspectj/a/b/f;->g:Ljava/lang/String;

    .line 3082
    :cond_6
    iget-object v2, p0, Lorg/mp4parser/aspectj/a/b/f;->g:Ljava/lang/String;

    .line 3108
    iget-boolean v3, p1, Lorg/mp4parser/aspectj/a/b/h;->e:Z

    invoke-virtual {p1, v1, v2, v3}, Lorg/mp4parser/aspectj/a/b/h;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4071
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/f;->f:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mp4parser/aspectj/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mp4parser/aspectj/a/b/f;->f:Ljava/lang/String;

    .line 4072
    :cond_7
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/f;->f:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5037
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->a:[Ljava/lang/Class;

    if-nez v1, :cond_8

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/mp4parser/aspectj/a/b/f;->c(I)[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->a:[Ljava/lang/Class;

    .line 5038
    :cond_8
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->a:[Ljava/lang/Class;

    if-eqz v1, :cond_b

    .line 5120
    iget-boolean v2, p1, Lorg/mp4parser/aspectj/a/b/h;->b:Z

    if-nez v2, :cond_a

    .line 5121
    array-length v1, v1

    if-nez v1, :cond_9

    const-string v1, "()"

    .line 5122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    const-string v1, "(..)"

    .line 5125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const-string v2, "("

    .line 5129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5130
    invoke-virtual {p1, v0, v1}, Lorg/mp4parser/aspectj/a/b/h;->a(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    const-string v1, ")"

    .line 5131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6045
    :cond_b
    :goto_1
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->c:[Ljava/lang/Class;

    if-nez v1, :cond_c

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/mp4parser/aspectj/a/b/f;->c(I)[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->c:[Ljava/lang/Class;

    .line 6046
    :cond_c
    iget-object v1, p0, Lorg/mp4parser/aspectj/a/b/a;->c:[Ljava/lang/Class;

    .line 6135
    iget-boolean v2, p1, Lorg/mp4parser/aspectj/a/b/h;->c:Z

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    array-length v2, v1

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const-string v2, " throws "

    .line 6137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6138
    invoke-virtual {p1, v0, v1}, Lorg/mp4parser/aspectj/a/b/h;->a(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 55
    :cond_e
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
