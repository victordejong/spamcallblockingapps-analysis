.class public Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# instance fields
.field private final transient a:Lcom/google/api/client/googleapis/auth/clientlogin/a$a;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpResponseException$a;Lcom/google/api/client/googleapis/auth/clientlogin/a$a;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$a;)V

    .line 47
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;->a:Lcom/google/api/client/googleapis/auth/clientlogin/a$a;

    return-void
.end method
