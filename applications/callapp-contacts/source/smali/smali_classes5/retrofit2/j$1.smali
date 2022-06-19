.class final Lretrofit2/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/j;->a(Lretrofit2/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/c;

.field final synthetic b:Lretrofit2/j;


# direct methods
.method constructor <init>(Lretrofit2/j;Lretrofit2/c;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lretrofit2/j$1;->b:Lretrofit2/j;

    iput-object p2, p0, Lretrofit2/j$1;->a:Lretrofit2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 163
    :try_start_0
    iget-object v0, p0, Lretrofit2/j$1;->a:Lretrofit2/c;

    iget-object v1, p0, Lretrofit2/j$1;->b:Lretrofit2/j;

    invoke-interface {v0, v1, p1}, Lretrofit2/c;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 165
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 158
    invoke-direct {p0, p2}, Lretrofit2/j$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 142
    :try_start_0
    iget-object p1, p0, Lretrofit2/j$1;->b:Lretrofit2/j;

    invoke-virtual {p1, p2}, Lretrofit2/j;->a(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object p2, p0, Lretrofit2/j$1;->a:Lretrofit2/c;

    iget-object v0, p0, Lretrofit2/j$1;->b:Lretrofit2/j;

    invoke-interface {p2, v0, p1}, Lretrofit2/c;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception p1

    .line 144
    invoke-static {p1}, Lretrofit2/s;->a(Ljava/lang/Throwable;)V

    .line 145
    invoke-direct {p0, p1}, Lretrofit2/j$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
