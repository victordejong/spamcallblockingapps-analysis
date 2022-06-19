.class public final Lcom/google/android/exoplayer2/audio/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/audio/f;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    return-void
.end method

.method private synthetic b(IJJ)V
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/f;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 197
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/f;->a(IJJ)V

    return-void
.end method

.method private synthetic b(J)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/f;->a(J)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/f;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Exception;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;JJ)V
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/audio/f;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 169
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/f;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic b(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->d(Z)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->d(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->b:Lcom/google/android/exoplayer2/audio/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/f;->c(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$3hzmHBaCNyJ1S2ote4plVtA_rho(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/f$a;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic lambda$7GFVK8IUJOtYO5JnYlu73iPP_MU(Lcom/google/android/exoplayer2/audio/f$a;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/f$a;->b(IJJ)V

    return-void
.end method

.method public static synthetic lambda$NIjWc6GcJF8-6jhTqB7s12zsLJU(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->d(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$aFbEFUMhDDtVTBzF6_24e08EOoc(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/f$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic lambda$bOLlBo-GeM0pfArsYGiSCb5e9oU(Lcom/google/android/exoplayer2/audio/f$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$gJlMxnEqr3eKBqnKJSnVUCTgpLE(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->c(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$lwjI1sRMYu8kIP9pzEftEJTgrW4(Lcom/google/android/exoplayer2/audio/f$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/f$a;->b(J)V

    return-void
.end method

.method public static synthetic lambda$nxLsiOLwwwcCwWr5gy7MEngL6QQ(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$wmeq3R-6L15oJOA8KEnFlMLbh4A(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(IJJ)V
    .locals 9

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    new-instance v8, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$7GFVK8IUJOtYO5JnYlu73iPP_MU;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$7GFVK8IUJOtYO5JnYlu73iPP_MU;-><init>(Lcom/google/android/exoplayer2/audio/f$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$lwjI1sRMYu8kIP9pzEftEJTgrW4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$lwjI1sRMYu8kIP9pzEftEJTgrW4;-><init>(Lcom/google/android/exoplayer2/audio/f$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$NIjWc6GcJF8-6jhTqB7s12zsLJU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$NIjWc6GcJF8-6jhTqB7s12zsLJU;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$nxLsiOLwwwcCwWr5gy7MEngL6QQ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$nxLsiOLwwwcCwWr5gy7MEngL6QQ;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$wmeq3R-6L15oJOA8KEnFlMLbh4A;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$wmeq3R-6L15oJOA8KEnFlMLbh4A;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    new-instance v8, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$aFbEFUMhDDtVTBzF6_24e08EOoc;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$aFbEFUMhDDtVTBzF6_24e08EOoc;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$bOLlBo-GeM0pfArsYGiSCb5e9oU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$bOLlBo-GeM0pfArsYGiSCb5e9oU;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/-$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE;-><init>(Lcom/google/android/exoplayer2/audio/f$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
