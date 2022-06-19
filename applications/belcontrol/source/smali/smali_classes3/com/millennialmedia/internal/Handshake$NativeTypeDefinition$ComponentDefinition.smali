.class public Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentDefinition"
.end annotation


# instance fields
.field public adverstiserRequired:I

.field public componentId:Ljava/lang/String;

.field public publisherRequired:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    iput p2, p0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    iput p3, p0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->adverstiserRequired:I

    return-void
.end method
