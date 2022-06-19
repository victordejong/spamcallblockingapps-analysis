.class public final Lcom/linkedin/android/litr/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/linkedin/android/litr/b/a;

.field public b:Lcom/linkedin/android/litr/e/d;

.field public c:Lcom/linkedin/android/litr/b/b;

.field public d:Landroid/media/MediaFormat;

.field public e:I

.field private final f:Lcom/linkedin/android/litr/d/d;

.field private final g:I

.field private final h:Lcom/linkedin/android/litr/d/e;


# direct methods
.method public constructor <init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/linkedin/android/litr/c$a;->f:Lcom/linkedin/android/litr/d/d;

    .line 137
    iput p2, p0, Lcom/linkedin/android/litr/c$a;->g:I

    .line 138
    iput-object p3, p0, Lcom/linkedin/android/litr/c$a;->h:Lcom/linkedin/android/litr/d/e;

    .line 141
    iput p2, p0, Lcom/linkedin/android/litr/c$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/linkedin/android/litr/c;
    .locals 11

    .line 176
    new-instance v10, Lcom/linkedin/android/litr/c;

    iget-object v1, p0, Lcom/linkedin/android/litr/c$a;->f:Lcom/linkedin/android/litr/d/d;

    iget-object v2, p0, Lcom/linkedin/android/litr/c$a;->a:Lcom/linkedin/android/litr/b/a;

    iget-object v3, p0, Lcom/linkedin/android/litr/c$a;->b:Lcom/linkedin/android/litr/e/d;

    iget-object v4, p0, Lcom/linkedin/android/litr/c$a;->c:Lcom/linkedin/android/litr/b/b;

    iget-object v5, p0, Lcom/linkedin/android/litr/c$a;->h:Lcom/linkedin/android/litr/d/e;

    iget-object v6, p0, Lcom/linkedin/android/litr/c$a;->d:Landroid/media/MediaFormat;

    iget v7, p0, Lcom/linkedin/android/litr/c$a;->g:I

    iget v8, p0, Lcom/linkedin/android/litr/c$a;->e:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/linkedin/android/litr/c;-><init>(Lcom/linkedin/android/litr/d/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/b;Lcom/linkedin/android/litr/d/e;Landroid/media/MediaFormat;IILcom/linkedin/android/litr/c$1;)V

    return-object v10
.end method
