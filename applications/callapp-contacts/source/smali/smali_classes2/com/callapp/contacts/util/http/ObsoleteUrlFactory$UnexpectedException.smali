.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnexpectedException"
.end annotation


# static fields
.field static final a:Lokhttp3/Interceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1192
    sget-object v0, Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;->INSTANCE:Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;

    sput-object v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;->a:Lokhttp3/Interceptor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1201
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    :try_start_0
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1196
    :goto_0
    new-instance v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic lambda$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
