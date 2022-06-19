.class public final Lcom/dropbox/core/util/b$a;
.super Lcom/dropbox/core/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/dropbox/core/util/b;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    .line 137
    iput-object p1, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private d()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/dropbox/core/util/b;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/dropbox/core/util/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-object p0
.end method

.method public final b()Lcom/dropbox/core/util/b;
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/dropbox/core/util/b$a;->d()V

    .line 183
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/dropbox/core/util/b;
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/dropbox/core/util/b$a;->d()V

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-object p0
.end method

.method public final c()Lcom/dropbox/core/util/b;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/dropbox/core/util/b$a;->b:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/dropbox/core/util/b;
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/dropbox/core/util/b$a;->d()V

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/util/b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method
