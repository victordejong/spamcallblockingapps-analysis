.class public Lcom/amazonaws/internal/StaticCredentialsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# instance fields
.field private final a:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/internal/StaticCredentialsProvider;->a:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazonaws/internal/StaticCredentialsProvider;->a:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method
