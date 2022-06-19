.class final Lretrofit2/l$m;
.super Lretrofit2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/l<",
        "Lokhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lretrofit2/l$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Lretrofit2/l$m;

    invoke-direct {v0}, Lretrofit2/l$m;-><init>()V

    sput-object v0, Lretrofit2/l$m;->a:Lretrofit2/l$m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lretrofit2/l;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lretrofit2/n;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    check-cast p2, Lokhttp3/MultipartBody$Part;

    if-eqz p2, :cond_0

    .line 2211
    iget-object p1, p1, Lretrofit2/n;->e:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {p1, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-void
.end method
