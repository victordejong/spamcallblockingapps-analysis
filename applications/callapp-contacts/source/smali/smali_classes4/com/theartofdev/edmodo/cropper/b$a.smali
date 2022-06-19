.class public final Lcom/theartofdev/edmodo/cropper/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    .line 135
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    .line 136
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    .line 137
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    .line 145
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    .line 146
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    return-void
.end method
