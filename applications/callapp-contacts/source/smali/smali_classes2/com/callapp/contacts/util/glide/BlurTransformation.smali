.class public Lcom/callapp/contacts/util/glide/BlurTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "SourceFile"


# static fields
.field private static final b:[B

.field private static final c:Lcom/callapp/contacts/util/glide/BlurTransformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lcom/callapp/contacts/util/glide/BlurTransformation;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.callapp.contacts.util.glide.BlurTransformation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/glide/BlurTransformation;->b:[B

    .line 19
    new-instance v0, Lcom/callapp/contacts/util/glide/BlurTransformation;

    invoke-direct {v0}, Lcom/callapp/contacts/util/glide/BlurTransformation;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/glide/BlurTransformation;->c:Lcom/callapp/contacts/util/glide/BlurTransformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/callapp/contacts/util/glide/BlurTransformation;
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/util/glide/BlurTransformation;->c:Lcom/callapp/contacts/util/glide/BlurTransformation;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 30
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p2

    .line 35
    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    const/16 p4, 0x80

    invoke-static {p2, p1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 36
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p4

    .line 39
    invoke-static {p2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 43
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 46
    invoke-virtual {v0, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 49
    invoke-virtual {p4, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 53
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    .line 54
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->destroy()V

    .line 55
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 67
    instance-of p1, p1, Lcom/callapp/contacts/util/glide/BlurTransformation;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x1486d63e

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/callapp/contacts/util/glide/BlurTransformation;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
