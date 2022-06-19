.class public Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/glide/GlideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifPlayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/g<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/resource/d/c;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;IIZ)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    .line 137
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    .line 163
    iput p4, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    .line 164
    iput-boolean p5, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->c:Z

    .line 166
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->i()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/Integer;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequest;->m()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;IIZZILcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    .line 137
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    .line 175
    iput p4, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    .line 176
    iput-boolean p5, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->c:Z

    .line 177
    iput p7, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    .line 178
    iput-boolean p6, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    .line 179
    iput-object p8, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->f:Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;

    .line 181
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->i()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 183
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/Integer;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequest;->m()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    .line 137
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    .line 141
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->i()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequest;->m()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    .line 137
    iput v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    .line 150
    iput p5, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    .line 151
    iput-boolean p6, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->c:Z

    .line 153
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->i()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p4}, Lcom/callapp/contacts/util/glide/GlideRequest;->d(I)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideRequest;->m()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    .line 159
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/bumptech/glide/load/resource/d/c;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->e:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->f:Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    if-eqz v0, :cond_1

    .line 215
    iget-boolean v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->d:Z

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer$1;-><init>(Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/c;->a(Landroidx/l/a/a/b$a;)V

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/c;->a(I)V

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->start()V

    return-void

    .line 243
    :cond_0
    iget v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/d/c;->a(I)V

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->start()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 132
    check-cast p1, Lcom/bumptech/glide/load/resource/d/c;

    .line 1196
    instance-of p2, p1, Lcom/bumptech/glide/load/resource/d/c;

    if-eqz p2, :cond_0

    .line 1197
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    .line 1198
    iget p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/resource/d/c;->a(I)V

    .line 1199
    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->c:Z

    if-eqz p1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->stop()V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a:Lcom/bumptech/glide/load/resource/d/c;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
