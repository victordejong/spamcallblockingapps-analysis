.class public final synthetic Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;

    invoke-direct {v0}, Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;->INSTANCE:Lcom/callapp/contacts/util/http/-$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException;->lambda$i_HLn2NKxQ3qA8-hD8QlFg7Sc0o(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
